(declare-fun b_ack!285 () (_ BitVec 64))
(declare-fun x_ack!286 () (_ BitVec 64))
(declare-fun a_ack!284 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!286)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!285)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!286)
               ((_ to_fp 11 53) b_ack!285))
       ((_ to_fp 11 53) a_ack!284)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!286)
                    ((_ to_fp 11 53) b_ack!285))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!286)
                    ((_ to_fp 11 53) b_ack!285))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!286)
                     ((_ to_fp 11 53) b_ack!285))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!284)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!284) ((_ to_fp 11 53) #x412e848000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!286)
          ((_ to_fp 11 53) b_ack!285))
  a_ack!284))

(check-sat)
(exit)
