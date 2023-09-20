(declare-fun limit_ack!717 () (_ BitVec 64))
(declare-fun a_ack!718 () (_ BitVec 64))
(declare-fun b_ack!714 () (_ BitVec 64))
(declare-fun epsabs_ack!716 () (_ BitVec 64))
(declare-fun c_ack!715 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!717)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!714) ((_ to_fp 11 53) a_ack!718)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!716)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!715) ((_ to_fp 11 53) a_ack!718))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!715) ((_ to_fp 11 53) b_ack!714))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!715))
                   ((_ to_fp 11 53) a_ack!718))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!714))
                 ((_ to_fp 11 53) b_ack!714))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!715))
                   ((_ to_fp 11 53) a_ack!718))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!714)))
         ((_ to_fp 11 53) b_ack!714))))

(check-sat)
(exit)
