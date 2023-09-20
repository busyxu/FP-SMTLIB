(declare-fun limit_ack!415 () (_ BitVec 64))
(declare-fun epsabs_ack!420 () (_ BitVec 64))
(declare-fun epsrel_ack!414 () (_ BitVec 64))
(declare-fun a_ack!421 () (_ BitVec 64))
(declare-fun x1_ack!416 () (_ BitVec 64))
(declare-fun x2_ack!417 () (_ BitVec 64))
(declare-fun x3_ack!418 () (_ BitVec 64))
(declare-fun b_ack!419 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!415)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!420) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!414)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!414)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!416) ((_ to_fp 11 53) a_ack!421))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!417) ((_ to_fp 11 53) x1_ack!416))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!418) ((_ to_fp 11 53) x2_ack!417))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!419) ((_ to_fp 11 53) x3_ack!418))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!416)
          ((_ to_fp 11 53) a_ack!421))))

(check-sat)
(exit)
