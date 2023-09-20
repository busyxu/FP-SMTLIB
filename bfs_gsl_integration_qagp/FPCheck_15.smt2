(declare-fun limit_ack!228 () (_ BitVec 64))
(declare-fun epsabs_ack!233 () (_ BitVec 64))
(declare-fun a_ack!234 () (_ BitVec 64))
(declare-fun x1_ack!229 () (_ BitVec 64))
(declare-fun x2_ack!230 () (_ BitVec 64))
(declare-fun x3_ack!231 () (_ BitVec 64))
(declare-fun b_ack!232 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!228)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!233)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!229) ((_ to_fp 11 53) a_ack!234))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!230) ((_ to_fp 11 53) x1_ack!229))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!231) ((_ to_fp 11 53) x2_ack!230))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!232) ((_ to_fp 11 53) x3_ack!231))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!234)
                  ((_ to_fp 11 53) x1_ack!229)))))

(check-sat)
(exit)
