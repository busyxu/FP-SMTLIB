(declare-fun c_ack!754 () (_ BitVec 64))
(declare-fun a_ack!755 () (_ BitVec 32))
(declare-fun b_ack!753 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!754))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!753 a_ack!755)))
(assert (not (bvslt a_ack!755 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!754) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!753))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!754))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!754))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!754))
             ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!754)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_OVERFLOW a!2 #x4000000000000000))))

(check-sat)
(exit)
