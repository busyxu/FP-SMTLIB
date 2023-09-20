(declare-fun limit_ack!682 () (_ BitVec 64))
(declare-fun a_ack!683 () (_ BitVec 64))
(declare-fun b_ack!679 () (_ BitVec 64))
(declare-fun epsabs_ack!681 () (_ BitVec 64))
(declare-fun c_ack!680 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!682)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!679) ((_ to_fp 11 53) a_ack!683)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!681)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!680) ((_ to_fp 11 53) a_ack!683))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!680) ((_ to_fp 11 53) b_ack!679))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!680))
                   ((_ to_fp 11 53) a_ack!683))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!679))
                 ((_ to_fp 11 53) b_ack!679))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!680))
                   ((_ to_fp 11 53) a_ack!683))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!679)))
         ((_ to_fp 11 53) b_ack!679))))

(check-sat)
(exit)
