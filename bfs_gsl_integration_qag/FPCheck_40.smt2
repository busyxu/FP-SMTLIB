(declare-fun key_ack!444 () (_ BitVec 32))
(declare-fun limit_ack!443 () (_ BitVec 64))
(declare-fun epsabs_ack!442 () (_ BitVec 64))
(declare-fun b_ack!441 () (_ BitVec 64))
(declare-fun a_ack!445 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt key_ack!444 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!443)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!442)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!445)
                                   ((_ to_fp 11 53) b_ack!441))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!445)
                                   ((_ to_fp 11 53) b_ack!441))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x1fd0000000000000))
    #x3fcad04f9087090f)))

(check-sat)
(exit)
