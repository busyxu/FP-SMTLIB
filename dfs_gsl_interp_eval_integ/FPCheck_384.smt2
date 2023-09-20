(declare-fun x1_ack!4699 () (_ BitVec 64))
(declare-fun x0_ack!4706 () (_ BitVec 64))
(declare-fun x2_ack!4700 () (_ BitVec 64))
(declare-fun b_ack!4705 () (_ BitVec 64))
(declare-fun a_ack!4704 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!4701 () (_ BitVec 64))
(declare-fun y1_ack!4702 () (_ BitVec 64))
(declare-fun y2_ack!4703 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4706) ((_ to_fp 11 53) x1_ack!4699)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4699) ((_ to_fp 11 53) x2_ack!4700)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4699)
                       ((_ to_fp 11 53) x0_ack!4706))
               ((_ to_fp 11 53) x0_ack!4706))
       ((_ to_fp 11 53) x1_ack!4699)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4699)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4699)
                       ((_ to_fp 11 53) x0_ack!4706)))
       ((_ to_fp 11 53) x0_ack!4706)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4700)
                       ((_ to_fp 11 53) x1_ack!4699))
               ((_ to_fp 11 53) x1_ack!4699))
       ((_ to_fp 11 53) x2_ack!4700)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4700)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4700)
                       ((_ to_fp 11 53) x1_ack!4699)))
       ((_ to_fp 11 53) x1_ack!4699)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4699)
                    ((_ to_fp 11 53) x0_ack!4706))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4700)
                    ((_ to_fp 11 53) x1_ack!4699))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4704) ((_ to_fp 11 53) b_ack!4705))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4704) ((_ to_fp 11 53) x0_ack!4706))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4705) ((_ to_fp 11 53) x2_ack!4700))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4704) ((_ to_fp 11 53) b_ack!4705))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4704) ((_ to_fp 11 53) x0_ack!4706))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4704) ((_ to_fp 11 53) x1_ack!4699)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4699) ((_ to_fp 11 53) a_ack!4704))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4705) ((_ to_fp 11 53) x1_ack!4699))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4705) ((_ to_fp 11 53) x2_ack!4700)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4700)
                    ((_ to_fp 11 53) x1_ack!4699))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4703)
                           ((_ to_fp 11 53) y1_ack!4702))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4700)
                                   ((_ to_fp 11 53) x1_ack!4699)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4702)
                           ((_ to_fp 11 53) y0_ack!4701))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4699)
                                   ((_ to_fp 11 53) x0_ack!4706)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4700)
                                   ((_ to_fp 11 53) x1_ack!4699))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4699)
                                   ((_ to_fp 11 53) x0_ack!4706))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4700)
                    ((_ to_fp 11 53) x1_ack!4699))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
