(declare-fun a_ack!270 () (_ BitVec 32))
(declare-fun b_ack!269 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!270 #x00000000)))
(assert (not (= #x00000000 a_ack!270)))
(assert (not (= #x00000001 a_ack!270)))
(assert (not (= #x00000002 a_ack!270)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub #x00000001 a_ack!270))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub #x00000001 a_ack!270))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!269) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #x00000001 a_ack!270))))

(check-sat)
(exit)
