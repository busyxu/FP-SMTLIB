(declare-fun b_ack!1585 () (_ BitVec 64))
(declare-fun a_ack!1587 () (_ BitVec 32))
(declare-fun c_ack!1586 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1585) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1587 #x00000000)))
(assert (not (= #x00000000 a_ack!1587)))
(assert (not (= #x00000001 a_ack!1587)))
(assert (not (= #x00000002 a_ack!1587)))
(assert (not (= #x00000003 a_ack!1587)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1585) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1586) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1586) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1585) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1585) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!1587))
(assert (bvsle #x00000005 a_ack!1587))
(assert (bvsle #x00000006 a_ack!1587))
(assert (bvsle #x00000007 a_ack!1587))
(assert (bvsle #x00000008 a_ack!1587))
(assert (bvsle #x00000009 a_ack!1587))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4022000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!1585)))
  #x4000000000000000))

(check-sat)
(exit)
