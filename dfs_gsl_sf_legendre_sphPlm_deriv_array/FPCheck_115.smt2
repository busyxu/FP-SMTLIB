(declare-fun b_ack!606 () (_ BitVec 32))
(declare-fun a_ack!608 () (_ BitVec 32))
(declare-fun c_ack!607 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!606 #x00000000)))
(assert (not (bvslt a_ack!608 b_ack!606)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!607) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!607) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!606))
(assert (not (bvslt a_ack!608 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!607) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!607) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!608)))
(assert (not (= #x00000001 a_ack!608)))
(assert (bvsle #x00000002 a_ack!608))
(assert (bvsle #x00000003 a_ack!608))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!607)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!607))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!607)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!607)))))
  (FPCHECK_FDIV_UNDERFLOW a!2 #x4008000000000000))))

(check-sat)
(exit)
