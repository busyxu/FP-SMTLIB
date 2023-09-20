(declare-fun x1_ack!3742 () (_ BitVec 64))
(declare-fun x0_ack!3749 () (_ BitVec 64))
(declare-fun x2_ack!3743 () (_ BitVec 64))
(declare-fun b_ack!3748 () (_ BitVec 64))
(declare-fun a_ack!3747 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3744 () (_ BitVec 64))
(declare-fun y1_ack!3745 () (_ BitVec 64))
(declare-fun y2_ack!3746 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3749) ((_ to_fp 11 53) x1_ack!3742)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3742) ((_ to_fp 11 53) x2_ack!3743)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3742)
                       ((_ to_fp 11 53) x0_ack!3749))
               ((_ to_fp 11 53) x0_ack!3749))
       ((_ to_fp 11 53) x1_ack!3742)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3742)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3742)
                       ((_ to_fp 11 53) x0_ack!3749)))
       ((_ to_fp 11 53) x0_ack!3749)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3743)
                       ((_ to_fp 11 53) x1_ack!3742))
               ((_ to_fp 11 53) x1_ack!3742))
       ((_ to_fp 11 53) x2_ack!3743)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3743)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3743)
                       ((_ to_fp 11 53) x1_ack!3742)))
       ((_ to_fp 11 53) x1_ack!3742)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3742)
                    ((_ to_fp 11 53) x0_ack!3749))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3743)
                    ((_ to_fp 11 53) x1_ack!3742))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3747) ((_ to_fp 11 53) b_ack!3748))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3747) ((_ to_fp 11 53) x0_ack!3749))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3748) ((_ to_fp 11 53) x2_ack!3743))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3747) ((_ to_fp 11 53) b_ack!3748))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3747) ((_ to_fp 11 53) x0_ack!3749))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3747) ((_ to_fp 11 53) x1_ack!3742)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3742) ((_ to_fp 11 53) a_ack!3747))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3748) ((_ to_fp 11 53) x1_ack!3742))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3748) ((_ to_fp 11 53) x2_ack!3743)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3743)
                    ((_ to_fp 11 53) x1_ack!3742))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3746)
                           ((_ to_fp 11 53) y1_ack!3745))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3743)
                                   ((_ to_fp 11 53) x1_ack!3742)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3745)
                           ((_ to_fp 11 53) y0_ack!3744))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3742)
                                   ((_ to_fp 11 53) x0_ack!3749)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3743)
                                   ((_ to_fp 11 53) x1_ack!3742))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3742)
                                   ((_ to_fp 11 53) x0_ack!3749))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3743)
                    ((_ to_fp 11 53) x1_ack!3742)))))))

(check-sat)
(exit)
