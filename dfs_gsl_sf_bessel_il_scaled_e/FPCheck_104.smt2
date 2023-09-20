(declare-fun b_ack!382 () (_ BitVec 64))
(declare-fun a_ack!383 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!382) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!383 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!382) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!383)))
(assert (= #x00000001 a_ack!383))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!382) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!382))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!382))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!382))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!382))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!2))))

(check-sat)
(exit)
