(declare-fun a_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!14) ((_ to_fp 11 53) #x4039000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!14)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!14)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!14)
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
  #x3ffc5bf891b4ef6b))

(check-sat)
(exit)
