(declare-fun a_ack!5205 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!5204 () (_ BitVec 64))
(declare-fun b_ack!5203 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!5205) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!5205)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!5205)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5204) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!5204)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!5204)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!5203) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5204)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) c_ack!5204))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5204)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) #x3fb999999999999a))
       ((_ to_fp 11 53) c_ack!5204)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5205)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5204)
                    ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5205)
                       ((_ to_fp 11 53) c_ack!5204))
               ((_ to_fp 11 53) c_ack!5204))
       ((_ to_fp 11 53) a_ack!5205)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5205)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5205)
                       ((_ to_fp 11 53) c_ack!5204)))
       ((_ to_fp 11 53) c_ack!5204)))
(assert (fp.leq (fp.add roundNearestTiesToEven
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!5205)
                        ((_ to_fp 11 53) c_ack!5204))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 b_ack!5203))

(check-sat)
(exit)
