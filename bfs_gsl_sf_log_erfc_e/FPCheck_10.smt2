(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!18)
               ((_ to_fp 11 53) a_ack!18))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (FPCHECK_FADD_UNDERFLOW
  #xbf5769e97db28853
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3f3f974a090d9ac8)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!18)
                  ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))))

(check-sat)
(exit)
