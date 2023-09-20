(declare-fun a_ack!1684 () (_ BitVec 32))
(declare-fun b_ack!1683 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (= #x00000000 a_ack!1684)))
(assert (not (= #x00000001 a_ack!1684)))
(assert (not (bvslt a_ack!1684 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1683) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1684)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1683) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1684)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (CF_log b_ack!1683)))

(check-sat)
(exit)
