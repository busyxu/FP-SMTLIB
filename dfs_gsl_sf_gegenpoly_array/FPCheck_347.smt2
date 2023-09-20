(declare-fun b_ack!1583 () (_ BitVec 64))
(declare-fun a_ack!1584 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1583) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1584 #x00000000)))
(assert (not (= #x00000000 a_ack!1584)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!1584))
(assert (bvsle #x00000003 a_ack!1584))
(assert (bvsle #x00000004 a_ack!1584))
(assert (bvsle #x00000005 a_ack!1584))
(assert (bvsle #x00000006 a_ack!1584))
(assert (bvsle #x00000007 a_ack!1584))
(assert (bvsle #x00000008 a_ack!1584))
(assert (bvsle #x00000009 a_ack!1584))
(assert (bvsle #x0000000a a_ack!1584))
(assert (bvsle #x0000000b a_ack!1584))
(assert (bvsle #x0000000c a_ack!1584))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4028000000000000)
                  ((_ to_fp 11 53) b_ack!1583))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
