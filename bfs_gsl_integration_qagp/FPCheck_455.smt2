(declare-fun limit_ack!6824 () (_ BitVec 64))
(declare-fun epsabs_ack!6829 () (_ BitVec 64))
(declare-fun a_ack!6830 () (_ BitVec 64))
(declare-fun x1_ack!6825 () (_ BitVec 64))
(declare-fun x2_ack!6826 () (_ BitVec 64))
(declare-fun x3_ack!6827 () (_ BitVec 64))
(declare-fun b_ack!6828 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6824)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6829)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6825) ((_ to_fp 11 53) a_ack!6830))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6826) ((_ to_fp 11 53) x1_ack!6825))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6827) ((_ to_fp 11 53) x2_ack!6826))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6828) ((_ to_fp 11 53) x3_ack!6827))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6830)
                                   ((_ to_fp 11 53) x1_ack!6825))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6825)
                  ((_ to_fp 11 53) a_ack!6830)))
  #x3fd2d755295ea137))

(check-sat)
(exit)
