(declare-fun a_ack!409 () (_ BitVec 32))
(declare-fun b_ack!406 () (_ BitVec 32))
(declare-fun c_ack!407 () (_ BitVec 64))
(declare-fun d_ack!408 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!409 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!409) b_ack!406)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvule (bvadd a_ack!409 b_ack!406) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!409 b_ack!406))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!409 b_ack!406))))))
  (bvult a!1 #x0000000000001001)))
(assert (not (bvule (bvadd #xffffffff (bvsub a_ack!409 b_ack!406)) #x000000aa)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff (bvsub a_ack!409 b_ack!406)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff (bvsub a_ack!409 b_ack!406)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x4000000000000000)))

(check-sat)
(exit)
