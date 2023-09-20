(declare-fun b_ack!2620 () (_ BitVec 64))
(declare-fun a_ack!2621 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2620) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2620) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!2621 #x00000000)))
(assert (not (= #x00000000 a_ack!2621)))
(assert (= #x00000001 a_ack!2621))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2620) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2620) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2620)
                    ((_ to_fp 11 53) b_ack!2620))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2620) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!2620))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!2620)))))
  (FPCHECK_FINVALID_LOG a!1 a!1)))

(check-sat)
(exit)
