(declare-fun b_ack!189 () (_ BitVec 32))
(declare-fun a_ack!191 () (_ BitVec 32))
(declare-fun c_ack!190 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!189 #x00000000)))
(assert (not (bvslt a_ack!191 b_ack!189)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!190) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!190) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!189)))
(assert (= #x00000001 b_ack!189))
(assert (not (bvslt b_ack!189 #x00000000)))
(assert (not (bvslt a_ack!191 b_ack!189)))
(assert (not (= #x00000000 b_ack!189)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!191 b_ack!189))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub a_ack!191 b_ack!189)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!191 b_ack!189)))
    a!1)))

(check-sat)
(exit)
