(declare-fun limit_ack!116 () (_ BitVec 64))
(declare-fun epsabs_ack!121 () (_ BitVec 64))
(declare-fun a_ack!122 () (_ BitVec 64))
(declare-fun x1_ack!117 () (_ BitVec 64))
(declare-fun x2_ack!118 () (_ BitVec 64))
(declare-fun x3_ack!119 () (_ BitVec 64))
(declare-fun b_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!116)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!121)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!117) ((_ to_fp 11 53) a_ack!122))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!118) ((_ to_fp 11 53) x1_ack!117))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!119) ((_ to_fp 11 53) x2_ack!118))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!120) ((_ to_fp 11 53) x3_ack!119))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!122)
          ((_ to_fp 11 53) x1_ack!117))))

(check-sat)
(exit)
