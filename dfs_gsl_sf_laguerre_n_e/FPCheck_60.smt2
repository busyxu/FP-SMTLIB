(declare-fun a_ack!225 () (_ BitVec 32))
(declare-fun c_ack!224 () (_ BitVec 64))
(declare-fun b_ack!223 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!225 #x00000000)))
(assert (not (= #x00000000 a_ack!225)))
(assert (not (= #x00000001 a_ack!225)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!225 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!225)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!223) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!223) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!223)))
  c_ack!224))

(check-sat)
(exit)
