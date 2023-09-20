(declare-fun limit_ack!2156 () (_ BitVec 64))
(declare-fun a_ack!2157 () (_ BitVec 64))
(declare-fun b_ack!2152 () (_ BitVec 64))
(declare-fun epsabs_ack!2154 () (_ BitVec 64))
(declare-fun epsrel_ack!2155 () (_ BitVec 64))
(declare-fun c_ack!2153 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!2156)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2152) ((_ to_fp 11 53) a_ack!2157))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2154) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2155)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2155)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2153) ((_ to_fp 11 53) a_ack!2157))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2153) ((_ to_fp 11 53) b_ack!2152))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2153))
                   ((_ to_fp 11 53) b_ack!2152))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2157))
                 ((_ to_fp 11 53) a_ack!2157))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2153))
                   ((_ to_fp 11 53) b_ack!2152))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2157)))
         ((_ to_fp 11 53) a_ack!2157))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2153))
                           ((_ to_fp 11 53) b_ack!2152))
                   ((_ to_fp 11 53) a_ack!2157))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!2152)
                               ((_ to_fp 11 53) a_ack!2157))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2153))
                           ((_ to_fp 11 53) b_ack!2152))
                   ((_ to_fp 11 53) a_ack!2157))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2152)
                                   ((_ to_fp 11 53) a_ack!2157))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!2157))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
