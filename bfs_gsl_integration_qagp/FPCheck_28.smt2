(declare-fun limit_ack!471 () (_ BitVec 64))
(declare-fun epsabs_ack!476 () (_ BitVec 64))
(declare-fun epsrel_ack!470 () (_ BitVec 64))
(declare-fun a_ack!477 () (_ BitVec 64))
(declare-fun x1_ack!472 () (_ BitVec 64))
(declare-fun x2_ack!473 () (_ BitVec 64))
(declare-fun x3_ack!474 () (_ BitVec 64))
(declare-fun b_ack!475 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!471)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!470)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!470)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!472) ((_ to_fp 11 53) a_ack!477))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!473) ((_ to_fp 11 53) x1_ack!472))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!474) ((_ to_fp 11 53) x2_ack!473))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!475) ((_ to_fp 11 53) x3_ack!474))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!477)
                  ((_ to_fp 11 53) x1_ack!472)))))

(check-sat)
(exit)
