(declare-fun limit_ack!2099 () (_ BitVec 64))
(declare-fun epsabs_ack!2104 () (_ BitVec 64))
(declare-fun a_ack!2105 () (_ BitVec 64))
(declare-fun x1_ack!2100 () (_ BitVec 64))
(declare-fun x2_ack!2101 () (_ BitVec 64))
(declare-fun x3_ack!2102 () (_ BitVec 64))
(declare-fun b_ack!2103 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2099)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2104)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2100) ((_ to_fp 11 53) a_ack!2105))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2101) ((_ to_fp 11 53) x1_ack!2100))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2102) ((_ to_fp 11 53) x2_ack!2101))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2103) ((_ to_fp 11 53) x3_ack!2102))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2105)
                                   ((_ to_fp 11 53) x1_ack!2100))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2100)
                  ((_ to_fp 11 53) a_ack!2105)))
  #x3fe5bdb9228de198))

(check-sat)
(exit)
