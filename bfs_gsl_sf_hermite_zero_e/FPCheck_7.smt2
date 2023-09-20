(declare-fun a_ack!36 () (_ BitVec 32))
(declare-fun b_ack!35 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvsle a_ack!36 #x00000000)))
(assert (not (bvslt b_ack!35 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!36 #x00000002) b_ack!35)))
(assert (not (= #x00000000 b_ack!35)))
(assert (not (= #x00000002 a_ack!36)))
(assert (not (bvslt a_ack!36 #x00000015)))
(assert (= #x00000001 b_ack!35))
(assert (bvslt #x00000032 a_ack!36))
(assert (= #x00000000 (bvand a_ack!36 #x00000001)))
(assert (FPCHECK_FINVALID_SQRT
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #x00000002 a_ack!36))
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #x00000002 a_ack!36))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
