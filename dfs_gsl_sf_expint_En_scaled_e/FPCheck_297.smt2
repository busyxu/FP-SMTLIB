(declare-fun a_ack!849 () (_ BitVec 32))
(declare-fun b_ack!848 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!849 #x00000000)))
(assert (not (= #x00000000 a_ack!849)))
(assert (not (= #x00000001 a_ack!849)))
(assert (= #x00000002 a_ack!849))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!848) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!848) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!848) ((_ to_fp 11 53) #x4059000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!848) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!848) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!848) ((_ to_fp 11 53) #xc010000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!848) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (CF_log (fp.abs ((_ to_fp 11 53) b_ack!848)))))

(check-sat)
(exit)
