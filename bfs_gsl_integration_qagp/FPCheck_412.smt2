(declare-fun limit_ack!6180 () (_ BitVec 64))
(declare-fun epsabs_ack!6185 () (_ BitVec 64))
(declare-fun a_ack!6186 () (_ BitVec 64))
(declare-fun x1_ack!6181 () (_ BitVec 64))
(declare-fun x2_ack!6182 () (_ BitVec 64))
(declare-fun x3_ack!6183 () (_ BitVec 64))
(declare-fun b_ack!6184 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6180)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6185)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6181) ((_ to_fp 11 53) a_ack!6186))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6182) ((_ to_fp 11 53) x1_ack!6181))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6183) ((_ to_fp 11 53) x2_ack!6182))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6184) ((_ to_fp 11 53) x3_ack!6183))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6186)
                                   ((_ to_fp 11 53) x1_ack!6181))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6181)
                  ((_ to_fp 11 53) a_ack!6186)))
  #x3fe2021b401fc120))

(check-sat)
(exit)
