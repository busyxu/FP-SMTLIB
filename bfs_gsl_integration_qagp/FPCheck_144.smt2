(declare-fun limit_ack!2232 () (_ BitVec 64))
(declare-fun epsabs_ack!2237 () (_ BitVec 64))
(declare-fun a_ack!2238 () (_ BitVec 64))
(declare-fun x1_ack!2233 () (_ BitVec 64))
(declare-fun x2_ack!2234 () (_ BitVec 64))
(declare-fun x3_ack!2235 () (_ BitVec 64))
(declare-fun b_ack!2236 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2232)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2237)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2233) ((_ to_fp 11 53) a_ack!2238))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2234) ((_ to_fp 11 53) x1_ack!2233))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2235) ((_ to_fp 11 53) x2_ack!2234))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2236) ((_ to_fp 11 53) x3_ack!2235))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2238)
                                   ((_ to_fp 11 53) x1_ack!2233))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2233)
                                   ((_ to_fp 11 53) a_ack!2238)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2238)
                                   ((_ to_fp 11 53) x1_ack!2233)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
