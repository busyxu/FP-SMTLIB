(declare-fun a_ack!304 () (_ BitVec 32))
(declare-fun b_ack!303 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!304 #x00000000)))
(assert (not (= #x00000000 a_ack!304)))
(assert (not (= #x00000001 a_ack!304)))
(assert (not (= #x00000002 a_ack!304)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub #x00000001 a_ack!304))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub #x00000001 a_ack!304))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000001 a_ack!304)))
                   ((_ to_fp 11 53) b_ack!303))))
(let ((a!2 (fp.abs (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3630000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000001 a_ack!304)))
                   ((_ to_fp 11 53) b_ack!303))))
  (FPCHECK_FDIV_OVERFLOW a!1 #x49b0000000000000)))

(check-sat)
(exit)
