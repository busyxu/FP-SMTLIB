(declare-fun b_ack!150 () (_ BitVec 64))
(declare-fun c_ack!151 () (_ BitVec 64))
(declare-fun d_ack!152 () (_ BitVec 32))
(declare-fun a_ack!153 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!150) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!151) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!151)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!152))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!150) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!153)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!153))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x8000000000000000))
    #x0000000000000000)))

(check-sat)
(exit)
