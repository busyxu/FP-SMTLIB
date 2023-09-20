(declare-fun a_ack!657 () (_ BitVec 32))
(declare-fun b_ack!656 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!657 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!656) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!656) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!657) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!656) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!656) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!657)))
(assert (not (= #x00000000 a_ack!657)))
(assert (= #x00000001 a_ack!657))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!656) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!656))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!656))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!656)
                                   ((_ to_fp 11 53) b_ack!656)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 (CF_sin b_ack!656))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (CF_cos b_ack!656))
                           ((_ to_fp 11 53) b_ack!656)))))
  (FPCHECK_FMUL_ACCURACY
    #x3cc0000000000000
    (fp.abs (fp.div roundNearestTiesToEven a!2 ((_ to_fp 11 53) b_ack!656)))))))

(check-sat)
(exit)
