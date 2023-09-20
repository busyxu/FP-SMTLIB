(declare-fun a_ack!469 () (_ BitVec 32))
(declare-fun b_ack!466 () (_ BitVec 32))
(declare-fun c_ack!467 () (_ BitVec 64))
(declare-fun d_ack!468 () (_ BitVec 64))
(assert (not (bvslt a_ack!469 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!469) b_ack!466)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!468) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule (bvadd a_ack!469 b_ack!466) #x000000aa)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!469 b_ack!466))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!469 b_ack!466))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))

(check-sat)
(exit)
