(declare-fun limit_ack!813 () (_ BitVec 64))
(declare-fun a_ack!814 () (_ BitVec 64))
(declare-fun b_ack!809 () (_ BitVec 64))
(declare-fun epsabs_ack!811 () (_ BitVec 64))
(declare-fun epsrel_ack!812 () (_ BitVec 64))
(declare-fun c_ack!810 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!813)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!809) ((_ to_fp 11 53) a_ack!814)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!811) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!812)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!812)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!810) ((_ to_fp 11 53) a_ack!814))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!810) ((_ to_fp 11 53) b_ack!809))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!810))
                   ((_ to_fp 11 53) a_ack!814))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!809))
                 ((_ to_fp 11 53) b_ack!809))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!810))
                   ((_ to_fp 11 53) a_ack!814))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!809)))
         ((_ to_fp 11 53) b_ack!809))))

(check-sat)
(exit)
