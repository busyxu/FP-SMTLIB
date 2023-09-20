(declare-fun limit_ack!179 () (_ BitVec 64))
(declare-fun epsabs_ack!184 () (_ BitVec 64))
(declare-fun a_ack!185 () (_ BitVec 64))
(declare-fun x1_ack!180 () (_ BitVec 64))
(declare-fun x2_ack!181 () (_ BitVec 64))
(declare-fun x3_ack!182 () (_ BitVec 64))
(declare-fun b_ack!183 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!179)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!184)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!180) ((_ to_fp 11 53) a_ack!185))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!181) ((_ to_fp 11 53) x1_ack!180))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!182) ((_ to_fp 11 53) x2_ack!181))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!183) ((_ to_fp 11 53) x3_ack!182))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!180)
          ((_ to_fp 11 53) a_ack!185))))

(check-sat)
(exit)
