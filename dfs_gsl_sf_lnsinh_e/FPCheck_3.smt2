(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5)
                       ((_ to_fp 11 53) a_ack!5))
               ((_ to_fp 11 53) a_ack!5))
       ((_ to_fp 11 53) a_ack!5)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5)
                       ((_ to_fp 11 53) a_ack!5))
               ((_ to_fp 11 53) a_ack!5))
       ((_ to_fp 11 53) a_ack!5)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5)
          ((_ to_fp 11 53) a_ack!5))
  #x3ce952c77030ad4a))

(check-sat)
(exit)
