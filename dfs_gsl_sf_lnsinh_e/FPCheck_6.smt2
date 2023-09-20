(declare-fun a_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!10) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!10)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!10))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!10)
                       ((_ to_fp 11 53) a_ack!10))
               ((_ to_fp 11 53) a_ack!10))
       ((_ to_fp 11 53) a_ack!10)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!10))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!10)
                       ((_ to_fp 11 53) a_ack!10))
               ((_ to_fp 11 53) a_ack!10))
       ((_ to_fp 11 53) a_ack!10)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3d6ae7f3e733b81f
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!10)
                  ((_ to_fp 11 53) a_ack!10))
          ((_ to_fp 11 53) #x3ce952c77030ad4a))))

(check-sat)
(exit)
