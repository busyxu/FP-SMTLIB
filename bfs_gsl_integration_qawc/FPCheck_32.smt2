(declare-fun limit_ack!401 () (_ BitVec 64))
(declare-fun a_ack!402 () (_ BitVec 64))
(declare-fun b_ack!398 () (_ BitVec 64))
(declare-fun epsabs_ack!400 () (_ BitVec 64))
(declare-fun c_ack!399 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!401)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!398) ((_ to_fp 11 53) a_ack!402)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!400)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!399) ((_ to_fp 11 53) a_ack!402))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!399) ((_ to_fp 11 53) b_ack!398))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!399))
          ((_ to_fp 11 53) a_ack!402))
  b_ack!398))

(check-sat)
(exit)
