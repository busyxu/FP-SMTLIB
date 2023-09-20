(declare-fun t_ack!636 () (_ BitVec 64))
(declare-fun t1_ack!637 () (_ BitVec 64))
(declare-fun h_ack!640 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!638 () (_ BitVec 64))
(declare-fun y1_ack!639 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!637)
                    ((_ to_fp 11 53) t_ack!636))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!637)
               ((_ to_fp 11 53) t_ack!636))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!640) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!637)
                ((_ to_fp 11 53) t_ack!636))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!640)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!637)
               ((_ to_fp 11 53) t_ack!636))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!639))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!638)
                                   ((_ to_fp 11 53) y0_ack!638))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!637)
                                   ((_ to_fp 11 53) t_ack!636)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!638))
                           a!1))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3f95555555555555)
            ((_ to_fp 11 53) y1_ack!639))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fb0000000000000)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!639) a!2))))))

(check-sat)
(exit)
