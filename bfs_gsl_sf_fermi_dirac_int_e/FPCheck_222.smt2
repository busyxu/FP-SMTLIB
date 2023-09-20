(declare-fun a_ack!700 () (_ BitVec 32))
(declare-fun b_ack!699 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!700 #xffffffff)))
(assert (= #xffffffff a_ack!700))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!699) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!699) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!699))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.abs ((_ to_fp 11 53) b_ack!699)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!699))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!699)))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!699))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
