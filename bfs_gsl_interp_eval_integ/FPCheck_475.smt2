(declare-fun x1_ack!5989 () (_ BitVec 64))
(declare-fun x0_ack!5993 () (_ BitVec 64))
(declare-fun x2_ack!5990 () (_ BitVec 64))
(declare-fun b_ack!5992 () (_ BitVec 64))
(declare-fun a_ack!5991 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5993) ((_ to_fp 11 53) x1_ack!5989)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5989) ((_ to_fp 11 53) x2_ack!5990)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5989)
                       ((_ to_fp 11 53) x0_ack!5993))
               ((_ to_fp 11 53) x0_ack!5993))
       ((_ to_fp 11 53) x1_ack!5989)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5989)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5989)
                       ((_ to_fp 11 53) x0_ack!5993)))
       ((_ to_fp 11 53) x0_ack!5993)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5990)
                       ((_ to_fp 11 53) x1_ack!5989))
               ((_ to_fp 11 53) x1_ack!5989))
       ((_ to_fp 11 53) x2_ack!5990)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5990)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5990)
                       ((_ to_fp 11 53) x1_ack!5989)))
       ((_ to_fp 11 53) x1_ack!5989)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5989)
                    ((_ to_fp 11 53) x0_ack!5993))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5990)
                    ((_ to_fp 11 53) x1_ack!5989))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5991) ((_ to_fp 11 53) b_ack!5992))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5991) ((_ to_fp 11 53) x0_ack!5993))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5992) ((_ to_fp 11 53) x2_ack!5990))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5991) ((_ to_fp 11 53) b_ack!5992))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5991) ((_ to_fp 11 53) x0_ack!5993))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5991) ((_ to_fp 11 53) x1_ack!5989))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5992) ((_ to_fp 11 53) x0_ack!5993))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5992) ((_ to_fp 11 53) x1_ack!5989)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5989) ((_ to_fp 11 53) b_ack!5992))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5989)
                    ((_ to_fp 11 53) x0_ack!5993))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5991)
                                   ((_ to_fp 11 53) x0_ack!5993))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5991)
                                   ((_ to_fp 11 53) x0_ack!5993)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5989)
                                   ((_ to_fp 11 53) x0_ack!5993))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5989)
                                   ((_ to_fp 11 53) x0_ack!5993))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5991)
                    ((_ to_fp 11 53) x0_ack!5993))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5989)
                    ((_ to_fp 11 53) x0_ack!5993))))))

(check-sat)
(exit)
