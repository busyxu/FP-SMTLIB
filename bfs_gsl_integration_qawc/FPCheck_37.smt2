(declare-fun limit_ack!471 () (_ BitVec 64))
(declare-fun a_ack!472 () (_ BitVec 64))
(declare-fun b_ack!467 () (_ BitVec 64))
(declare-fun epsabs_ack!469 () (_ BitVec 64))
(declare-fun epsrel_ack!470 () (_ BitVec 64))
(declare-fun c_ack!468 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!471)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) a_ack!472)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!469) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!470)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!470)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!468) ((_ to_fp 11 53) a_ack!472))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!468) ((_ to_fp 11 53) b_ack!467))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!468))
          ((_ to_fp 11 53) a_ack!472))
  b_ack!467))

(check-sat)
(exit)
