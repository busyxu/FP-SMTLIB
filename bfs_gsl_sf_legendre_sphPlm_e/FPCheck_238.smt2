(declare-fun b_ack!1143 () (_ BitVec 32))
(declare-fun a_ack!1145 () (_ BitVec 32))
(declare-fun c_ack!1144 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1143 #x00000000)))
(assert (not (bvslt a_ack!1145 b_ack!1143)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1144) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1144) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!1143))
(assert (not (bvslt a_ack!1145 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1144) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1144) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!1145)))
(assert (not (= #x00000001 a_ack!1145)))
(assert (not (= #x00000002 a_ack!1145)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1144) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1144) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1145))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x402921fb54442d18))

(check-sat)
(exit)
