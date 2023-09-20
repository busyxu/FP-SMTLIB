(declare-fun limit_ack!2186 () (_ BitVec 64))
(declare-fun epsabs_ack!2191 () (_ BitVec 64))
(declare-fun epsrel_ack!2185 () (_ BitVec 64))
(declare-fun a_ack!2192 () (_ BitVec 64))
(declare-fun x1_ack!2187 () (_ BitVec 64))
(declare-fun x2_ack!2188 () (_ BitVec 64))
(declare-fun x3_ack!2189 () (_ BitVec 64))
(declare-fun b_ack!2190 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2186)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2191) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2185)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2185)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2187) ((_ to_fp 11 53) a_ack!2192))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2188) ((_ to_fp 11 53) x1_ack!2187))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2189) ((_ to_fp 11 53) x2_ack!2188))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2190) ((_ to_fp 11 53) x3_ack!2189))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2192)
                                   ((_ to_fp 11 53) x1_ack!2187))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2187)
                                   ((_ to_fp 11 53) a_ack!2192)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2192)
                                   ((_ to_fp 11 53) x1_ack!2187)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
