(declare-fun a_ack!467 () (_ BitVec 32))
(declare-fun b_ack!464 () (_ BitVec 32))
(declare-fun c_ack!465 () (_ BitVec 64))
(declare-fun d_ack!466 () (_ BitVec 64))
(assert (not (bvslt a_ack!467 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!467) b_ack!464)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!465) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvule (bvadd a_ack!467 b_ack!464) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!467 b_ack!464))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!467 b_ack!464))))))
  (bvult a!1 #x0000000000001001)))
(assert (not (bvule (bvadd #xffffffff (bvsub a_ack!467 b_ack!464)) #x000000aa)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff (bvsub a_ack!467 b_ack!464)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3f847ae147ae147b))))

(check-sat)
(exit)
