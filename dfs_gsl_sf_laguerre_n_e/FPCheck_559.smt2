(declare-fun a_ack!1722 () (_ BitVec 32))
(declare-fun c_ack!1721 () (_ BitVec 64))
(declare-fun b_ack!1720 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1722 #x00000000)))
(assert (not (= #x00000000 a_ack!1722)))
(assert (not (= #x00000001 a_ack!1722)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1722 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1722)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1720) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1720) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!1722))
(assert (bvslt #x00000003 a_ack!1722))
(assert (bvslt #x00000004 a_ack!1722))
(assert (bvslt #x00000005 a_ack!1722))
(assert (bvslt #x00000006 a_ack!1722))
(assert (bvslt #x00000007 a_ack!1722))
(assert (bvslt #x00000008 a_ack!1722))
(assert (bvslt #x00000009 a_ack!1722))
(assert (bvslt #x0000000a a_ack!1722))
(assert (bvslt #x0000000b a_ack!1722))
(assert (bvslt #x0000000c a_ack!1722))
(assert (bvslt #x0000000d a_ack!1722))
(assert (bvslt #x0000000e a_ack!1722))
(assert (bvslt #x0000000f a_ack!1722))
(assert (bvslt #x00000010 a_ack!1722))
(assert (bvslt #x00000011 a_ack!1722))
(assert (bvslt #x00000012 a_ack!1722))
(assert (bvslt #x00000013 a_ack!1722))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4033000000000000)
          ((_ to_fp 11 53) b_ack!1720))))

(check-sat)
(exit)
