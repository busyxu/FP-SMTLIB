(declare-fun a_ack!154 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!154)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!154))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!154)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!154)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!154)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!154) ((_ to_fp 11 53) #xbeb0c6f7a0b5ed8d)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!154)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f689374bc6a7efa))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                           ((_ to_fp 11 53) a_ack!154)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xbff272f1f7e3704c))
                          ((_ to_fp 11 53) #xbff272f1f7e3704c))
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                           ((_ to_fp 11 53) a_ack!154)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xbff272f1f7e3704c)))
         ((_ to_fp 11 53) #xbff272f1f7e3704c))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfc123ba200f6a5c)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbfc123ba200f6a5c))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfc123ba200f6a5c)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfc123ba200f6a5c)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc0013978fbf1b826)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc123ba200f6a5c)
                                   a!1)))))
  (not (fp.gt (fp.abs a!2) ((_ to_fp 11 53) #x401ddf5689ea3421))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc123ba200f6a5c)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3d12ab9616326095))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc0013978fbf1b826)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc123ba200f6a5c)
                                   a!1)))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc0013978fbf1b826)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!154))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc123ba200f6a5c)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW
    a!3
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!2 (CF_exp a!2))
            ((_ to_fp 11 53) a_ack!154)))))))

(check-sat)
(exit)
