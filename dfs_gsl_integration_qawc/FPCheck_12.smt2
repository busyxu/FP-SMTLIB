(declare-fun limit_ack!188 () (_ BitVec 64))
(declare-fun a_ack!189 () (_ BitVec 64))
(declare-fun b_ack!184 () (_ BitVec 64))
(declare-fun epsabs_ack!186 () (_ BitVec 64))
(declare-fun epsrel_ack!187 () (_ BitVec 64))
(declare-fun c_ack!185 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!188)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!184) ((_ to_fp 11 53) a_ack!189))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!186) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!187)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!187)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!185) ((_ to_fp 11 53) a_ack!189))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!185) ((_ to_fp 11 53) b_ack!184))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!185))
                   ((_ to_fp 11 53) b_ack!184))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!189))
                 ((_ to_fp 11 53) a_ack!189))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!185))
                   ((_ to_fp 11 53) b_ack!184))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!189)))
         ((_ to_fp 11 53) a_ack!189))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!185))
                           ((_ to_fp 11 53) b_ack!184))
                   ((_ to_fp 11 53) a_ack!189))))
  (FPCHECK_FDIV_OVERFLOW
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!184)
            ((_ to_fp 11 53) a_ack!189)))))

(check-sat)
(exit)
