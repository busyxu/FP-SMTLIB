(declare-fun c_ack!1062 () (_ BitVec 64))
(declare-fun a_ack!1063 () (_ BitVec 32))
(declare-fun b_ack!1061 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1062) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1063 #xffffffff)))
(assert (= #xffffffff a_ack!1063))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1062) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1061) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1062) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1062) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1062)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 c_ack!1062))

(check-sat)
(exit)
