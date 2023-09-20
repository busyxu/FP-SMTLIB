(declare-fun b_ack!195 () (_ BitVec 32))
(declare-fun a_ack!197 () (_ BitVec 32))
(declare-fun c_ack!196 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!195 #x00000000)))
(assert (not (bvslt a_ack!197 b_ack!195)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!196) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!196) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!195)))
(assert (= #x00000001 b_ack!195))
(assert (not (bvslt b_ack!195 #x00000000)))
(assert (not (bvslt a_ack!197 b_ack!195)))
(assert (not (= #x00000000 b_ack!195)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!197 b_ack!195))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!197 b_ack!195)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!197 b_ack!195)))
    a!1)))

(check-sat)
(exit)
