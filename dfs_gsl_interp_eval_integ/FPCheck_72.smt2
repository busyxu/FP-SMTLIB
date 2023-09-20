(declare-fun x1_ack!742 () (_ BitVec 64))
(declare-fun x0_ack!749 () (_ BitVec 64))
(declare-fun x2_ack!743 () (_ BitVec 64))
(declare-fun b_ack!748 () (_ BitVec 64))
(declare-fun a_ack!747 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!744 () (_ BitVec 64))
(declare-fun y1_ack!745 () (_ BitVec 64))
(declare-fun y2_ack!746 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!749) ((_ to_fp 11 53) x1_ack!742)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!742) ((_ to_fp 11 53) x2_ack!743)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!742)
                       ((_ to_fp 11 53) x0_ack!749))
               ((_ to_fp 11 53) x0_ack!749))
       ((_ to_fp 11 53) x1_ack!742)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!742)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!742)
                       ((_ to_fp 11 53) x0_ack!749)))
       ((_ to_fp 11 53) x0_ack!749)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!743)
                       ((_ to_fp 11 53) x1_ack!742))
               ((_ to_fp 11 53) x1_ack!742))
       ((_ to_fp 11 53) x2_ack!743)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!743)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!743)
                       ((_ to_fp 11 53) x1_ack!742)))
       ((_ to_fp 11 53) x1_ack!742)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!742)
                    ((_ to_fp 11 53) x0_ack!749))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!743)
                    ((_ to_fp 11 53) x1_ack!742))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!747) ((_ to_fp 11 53) b_ack!748))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!747) ((_ to_fp 11 53) x0_ack!749))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!748) ((_ to_fp 11 53) x2_ack!743))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!747) ((_ to_fp 11 53) b_ack!748))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!747) ((_ to_fp 11 53) x0_ack!749))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!747) ((_ to_fp 11 53) x1_ack!742))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!748) ((_ to_fp 11 53) x0_ack!749))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!748) ((_ to_fp 11 53) x1_ack!742)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!742) ((_ to_fp 11 53) b_ack!748))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!742)
                    ((_ to_fp 11 53) x0_ack!749))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!746)
                           ((_ to_fp 11 53) y1_ack!745))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!743)
                                   ((_ to_fp 11 53) x1_ack!742)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!745)
                           ((_ to_fp 11 53) y0_ack!744))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!742)
                                   ((_ to_fp 11 53) x0_ack!749)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!743)
                                   ((_ to_fp 11 53) x1_ack!742))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!742)
                                   ((_ to_fp 11 53) x0_ack!749))))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
