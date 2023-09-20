(declare-fun a_ack!2582 () (_ BitVec 64))
(declare-fun b_ack!2579 () (_ BitVec 64))
(declare-fun c_ack!2580 () (_ BitVec 64))
(declare-fun d_ack!2581 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!2582) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2579) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2580) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!2581)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!2580)
          ((_ to_fp 11 53) a_ack!2582))
  b_ack!2579))

(check-sat)
(exit)
