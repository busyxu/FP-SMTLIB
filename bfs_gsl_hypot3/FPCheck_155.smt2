(declare-fun c_ack!803 () (_ BitVec 64))
(declare-fun b_ack!802 () (_ BitVec 64))
(declare-fun a_ack!804 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!802))
            (fp.abs ((_ to_fp 11 53) c_ack!803)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!804))
       (fp.abs ((_ to_fp 11 53) c_ack!803))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!804))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!803))
          (fp.abs ((_ to_fp 11 53) a_ack!804)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!803))
          (fp.abs ((_ to_fp 11 53) a_ack!804)))))

(check-sat)
(exit)
