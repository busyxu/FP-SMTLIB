(declare-fun limit_ack!1981 () (_ BitVec 64))
(declare-fun a_ack!1982 () (_ BitVec 64))
(declare-fun b_ack!1978 () (_ BitVec 64))
(declare-fun epsabs_ack!1980 () (_ BitVec 64))
(declare-fun c_ack!1979 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!1981)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1978) ((_ to_fp 11 53) a_ack!1982)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1980)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1979) ((_ to_fp 11 53) a_ack!1982))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1979) ((_ to_fp 11 53) b_ack!1978))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1979))
                   ((_ to_fp 11 53) a_ack!1982))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1978))
                 ((_ to_fp 11 53) b_ack!1978))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1979))
                   ((_ to_fp 11 53) a_ack!1982))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1978)))
         ((_ to_fp 11 53) b_ack!1978))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1979))
                           ((_ to_fp 11 53) a_ack!1982))
                   ((_ to_fp 11 53) b_ack!1978))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1982)
                                   ((_ to_fp 11 53) b_ack!1978))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
