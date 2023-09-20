(declare-fun b_ack!816 () (_ BitVec 64))
(declare-fun a_ack!817 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!816) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!816) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!817 #x00000000)))
(assert (not (= #x00000000 a_ack!817)))
(assert (= #x00000001 a_ack!817))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!816) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!816) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!816)
                    ((_ to_fp 11 53) b_ack!816))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!816) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!816) ((_ to_fp 11 53) #x4018000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!816)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!816)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
