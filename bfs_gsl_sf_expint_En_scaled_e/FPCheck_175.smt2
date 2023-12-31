(declare-fun a_ack!483 () (_ BitVec 32))
(declare-fun b_ack!482 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!483 #x00000000)))
(assert (not (= #x00000000 a_ack!483)))
(assert (= #x00000001 a_ack!483))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!482) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!482) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!482) ((_ to_fp 11 53) #xc010000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!482) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) b_ack!482))
  (fp.abs ((_ to_fp 11 53) b_ack!482))))

(check-sat)
(exit)
