(declare-fun nu2_ack!23 () (_ BitVec 64))
(declare-fun x_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun nu1_ack!22 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!24) ((_ to_fp 11 53) nu2_ack!23))))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!23)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) x_ack!24)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (CF_pow (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!23)
                  ((_ to_fp 11 53) x_ack!24))
          nu1_ack!22)))

(check-sat)
(exit)
