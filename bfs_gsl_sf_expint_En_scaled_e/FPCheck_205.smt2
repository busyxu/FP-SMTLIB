(declare-fun a_ack!575 () (_ BitVec 32))
(declare-fun b_ack!574 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!575 #x00000000)))
(assert (not (= #x00000000 a_ack!575)))
(assert (not (= #x00000001 a_ack!575)))
(assert (= #x00000002 a_ack!575))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #x4059000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) b_ack!574))
  (fp.abs ((_ to_fp 11 53) b_ack!574))))

(check-sat)
(exit)
