(declare-fun b_ack!1162 () (_ BitVec 64))
(declare-fun a_ack!1163 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1162) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1162) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1163 #x00000000)))
(assert (not (= #x00000000 a_ack!1163)))
(assert (not (= #x00000001 a_ack!1163)))
(assert (bvslt #x000186a0 a_ack!1163))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1162) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1162)
          ((_ to_fp 11 53) b_ack!1162))
  #x3ff0000000000000))

(check-sat)
(exit)
